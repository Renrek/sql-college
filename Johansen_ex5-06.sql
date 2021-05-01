DELETE FROM products where category_id = 5;
DELETE FROM categories where category_id = 5;

/* This exercise (#6) is problematic in a couple of ways. First, it requests the same statement, 
which was already executed in exercise #3. 

3. Write a DELETE statement that deletes the row you added to the Categories table in
   exercise 1. This statement should use the category_id column to identify the row.
   
6. Write a DELETE statement that deletes the row that you added to the Categories table in exercise 1. ...

The categories.catagory_id was assigned the value 5 
by auto_increment therefore there are no products that are dependent on it. 

DELETE FROM categories where category_id = 5;
Result: 0 row(s) affected
  
SELECT COUNT(*) 
FROM products 
WHERE category_id = 5;
Result: COUNT(*) = 0

This scenario would not produce the foreign key/restrict on delete action it was hoping to achieve.
Now, I suspect that I would have to use categories.category_id = 4 which pre-existed this exercise
and ties into the previous ex5-04 entry which had me add a product with the products.category_id = 4  */

DELETE FROM products where category_id = 4;
DELETE FROM categories where category_id = 4;

/* The actions of two statements above would remove the row from ex5-04 insertion and then 
remove categories.category_id = 4 which is "Keyboards". I did not follow through with its execution, 
not having enough information and waiting for feedback*/