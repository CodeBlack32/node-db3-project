const express = require("express");

const SchemeRouter = require("./schemes/scheme-router");

const server = express();

server.use(express.json());
server.use("/api/schemes", SchemeRouter);

module.exports = server;
