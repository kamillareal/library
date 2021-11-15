module.exports = (sequelize, Sequelize) => {
  const Book = sequelize.define("books", {
    isbn: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      allowNull: false
    },
    bookName: {
      type: Sequelize.STRING,
      allowNull: false
    }, 
    author: {
      type: Sequelize.STRING,
      allowNull: false
    }, 
    numberOfPages: {
      type: Sequelize.INTEGER,
      allowNull: false
    }, 
    copiesAvailable: {
      type: Sequelize.INTEGER,
      allowNull: false
    }, 
  });

  return Book;
};