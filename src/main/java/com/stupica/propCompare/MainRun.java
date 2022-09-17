package com.stupica.propCompare;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;


public class MainRun {

    public static void main(String[] args) {
        String missingProp = "";

        String propertiesFilename1 = System.getProperty("PropFile1");
        String propertiesFilename2 = System.getProperty("PropFile2");

        System.out.println(".. read file by Property1: " + propertiesFilename1);
        Map<String, String> PropFile1 = getProps(propertiesFilename1);
        System.out.println(".. read file by Property2: " + propertiesFilename2);
        Map<String, String> PropFile2 = getProps(propertiesFilename2);

        System.out.println("--");
        for (Map.Entry<String, String> entry : PropFile1.entrySet()) {
            if (PropFile2.containsKey(entry.getKey())) {
                String PropFile2Value = (PropFile2.get(entry.getKey()));
                String PropFile1Value = (entry.getValue());

                if (!PropFile2Value.equalsIgnoreCase(PropFile1Value)) {
                    System.out.println("Key : "+entry.getKey()+"\t\nValue : PropFile1 = "+PropFile1Value+", PropFile2 = "+PropFile2Value);
                }
            } else {
                missingProp += ("\t" + entry.getKey() + " = " + entry.getValue() + "\n");
            }
        }
        System.out.println("--");
        System.out.println("Missing Key(s) - in PropFile2:");
        System.out.println(missingProp);
    }

    public static Map<String, String> getProps(String propertiesFilename1) {
        Map<String, String> properties = new HashMap<>();
        try (InputStream stream = new FileInputStream(propertiesFilename1)) {
            Properties prop = new Properties() {
                @Override
                public synchronized Object put(Object key, Object value) {
                    return properties.put(key.toString(), value.toString());
                }
            };
            prop.load(stream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return properties;
    }

}
