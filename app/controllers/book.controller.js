const db = require("../models");
const Book = db.books;
const Op = db.Sequelize.Op;

exports.create = (req, res) => {
  Book.create(req.body)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error creating book."
      });
    });
};

exports.findAll = (req, res) => {
  Book.findAll()
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error finding books."
      });
    });
};

exports.find = (req, res) => {
  const isbn = req.params.isbn;

  Book.findByPk(isbn)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find book with isbn ${isbn}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error finding book."
      });
    });
};

exports.update = (req, res) => {
  const isbn = req.params.isbn;

  Book.update(req.body, { where: { isbn: isbn } })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Book was updated successfully."
        });
      } else {
        res.send({
          message: `Error updating book.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating book."
      });
    });
};

exports.delete = (req, res) => {
  const isbn = req.params.isbn;

  Book.destroy({where: { isbn: isbn }})
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Book was deleted successfully!"
        });
      } else {
        res.send({
          message: `Error deleting book.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error deleting book."
      });
    });
};