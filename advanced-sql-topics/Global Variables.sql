/*
Syntax:
	SET GLOBAL var_name = value;
		or
	SET @@global.var_name = value;

System variables:
	.max_connections() - indicates the maximum number of connections to a server
						 that can be established at a certain point in time.
                         
	.max_join_size()   - sets the maximum memory space allocated for the joins created 
						 by a certain connection.
*/

SET GLOBAL max_connections = 1000;
SET @@global.max_connections = 1;