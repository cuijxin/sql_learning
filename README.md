## SELECT语句的各子句的执行顺序

```mermaid
graph TD
A[FROM子句] --> B[WHERE子句]
B[WHERE子句] --> C[GROUP BY子句]
C[GROUP BY子句] --> D[HAVING子句]
D[HAVING子句] --> E[SELECT子句]
E[SELECT子句] --> F[ORDER BY子句]
```