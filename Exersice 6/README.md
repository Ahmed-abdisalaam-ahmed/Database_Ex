## 📝 Student Task Sheet

> For each of the following:
> 
1. Create a sample table
2. Insert 1000+ rows (manually, generator, or script)
3. Run a query that benefits from an index
4. Measure it with and without index using `EXPLAIN`
5. Write a summary of what changed and why


## **BeFore**
![alt text](image.png)
## **After**
![alt text](image-1.png)


## **Explanation**  
- Without Index: The time shows 0.002s for the EXPLAIN (the planning phase). For a real SELECT on 10,000 rows, this would usually be much higher.

- With Index: The time shows 0s (less than 1ms). The database found the answer almost instantly.

