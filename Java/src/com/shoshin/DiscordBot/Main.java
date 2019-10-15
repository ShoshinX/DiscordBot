package com.shoshin.DiscordBot;

import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.net.InetSocketAddress;

public class Main {

    public static void main(String[] args) {
	Bot myBot = Bot.create();
    HttpServer server = initServer();
    // setup the handlers and respond appropriately
    server.start();
    }

    private static HttpServer initServer() {
        try {
            return HttpServer.create(new InetSocketAddress(8080),0);
        } catch (IOException e) {
            System.out.println("port 8080 is occupied");
            System.exit(1);
        }
        return null;
    }
}
