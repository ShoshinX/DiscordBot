package com.shoshin.DiscordBot;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;

public class Bot {
    String id;
    String secret;
    String token;
    private Bot(String id, String secret, String token){
        this.id = id;
        this.secret = secret;
        this.token = token;
    }

    /**
     * Instantiate an instance of bot using data file
     * @return Bot
     */
    public static Bot create() {
        // TODO
        String pathToDataFile = System
                .getProperty("user.dir")
                .substring(0,System
                        .getProperty("user.dir")
                        .lastIndexOf("/Java"))
                + "/data/BotData.txt";
        try {
            String[] contents = Files.readString(Paths.get(pathToDataFile)).split("\n");
            String client_id = contents[0].split(":")[1];
            String client_secret = contents[1].split(":")[1];
            String token = contents[2].split(":")[1];
            return new Bot(client_id, client_secret,token);
        } catch (IOException e){
            System.out.println("Data File missing");
            System.exit(1);
        }
        return null;
    };

    public String getSecret() {
        return secret;
    }
    public String getToken() {
        return token;
    }
    public String getId() {
        return id;
    }
}
