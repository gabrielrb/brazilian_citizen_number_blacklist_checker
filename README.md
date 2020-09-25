# Brazilian Citizen Number Blacklist Checker
___

With this app you can not only check if a "CPF" number is included in a blacklist, but also add or remove said number from that blacklist.

# Structure and Features
___
The first thing you will see on the application's home page will be a search form, where you can search by "CPF" number.
- If the number you are looking for is in a valid "CPF" format, you will see the result below the form, indicating whether the number is blocked or free. If the number is not valid, you will have to adjust it.
- If it is blocked, it means that it is blacklisted, and the option to remove it from there will appear. Otherwise, if the number is not in the list, the option to add it will appear.

The application also offers an API, where you have access to all "CPF" numbers included in the blacklist, in `JSON` format.
- To access all numbers, you can enter the address `http://localhost:3000/api/v1/documents`.
- If you want to search for a specific "CPF", you can access the same address above, adding the number searched for at the end. E.g. `http://localhost:3000/api/v1/documents/01052084346`.

Furthermore, the application also has a status page, where you can check how many "CPF" numbers are in the database, as well as server uptime information. To check it out, just type `http://localhost:3000/status`.


## To do
___

 - Use of Docker containers and PostgreSQL database via Docker
 - Add mask to search form
 - Write Tests
