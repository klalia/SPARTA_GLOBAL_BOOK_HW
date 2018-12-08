# SPARTA_GLOBAL_BOOK_HW

This is a bookstore created through ruby Sinatra. It can be accessed by running rackup. You will need to go into Git bash and enter rackup, this will then provide you with a port number by a HTTP request. You then go into google and type in localhost/'portnumber' to get to the index page of the book store. Once on the index page, there is a header with books (the index page) and a new books option. The new books is where you can add a new book into the system and onto the database. If you click on the title of the book it will lead you to the show page, where the is information about the book as well as an option to edit the book. The edit button will take you to the edit page where you can edit the details of the book and it will be updated onto the database. 

This is similar to my ruby YouTube page, with an additional feature. This bookstore has been connected to Postgres. Postgres is a database management system that has emphasis on extensibility. This project has included the model part of the MVC model. The database was created through SQL features and then connected through Postgres. The connection includes the database name, username and password. All method included in the model class, which is a ruby file, are SQL statements that have been injected in.

The new features mean there is not only an index and show page but also a new page, where you can add a new book into the database. They will then be portrayed on the show and index page. There is also an edit page where you can edit a book and it will then be updated into the database.

## SQL

SQL is structured query language used to manage the data in the database. This project includes SQL statements like SELECT, INSET, UPDATE and DELETE. The select statement gets data, the insert statement adds data, the updated updates data and the delete statement deletes data in the database that the file has been connected too.
