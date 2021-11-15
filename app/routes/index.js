module.exports = app => {
  const books = require("../controllers/book.controller.js");

  var router = require("express").Router();

  router.post("/", books.create);
  router.get("/", books.findAll);
  router.get("/:isbn", books.find);
  router.put("/:isbn", books.update);
  router.delete("/:isbn", books.delete);

  app.use('/books', router);
};
