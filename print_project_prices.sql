SELECT CONCAT( 'Project ', project.ID ) AS NAME, SUM( worker.SALARY )*( DATEDIFF( FINISH_DATE, START_DATE ) DIV 30 ) AS PRICE 
FROM
	project
	INNER JOIN project_worker ON project.ID = project_worker.PROJECT_ID
	INNER JOIN worker ON project_worker.WORKER_ID = worker.ID 
GROUP BY
	project.ID 
ORDER BY
	PRICE DESC