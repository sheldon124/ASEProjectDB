# ASEProjectDB
This repo contains the database schema and stored procedures used for Advanced Software Engineering project

## Tables
* citizen: A unique record is created in the citizen table for each user that is registered on the website
* project: Projects created and displayed on the website are stored here
* comment: Comments are linked to projects and can be upvoted or downvoted by users
* event: Events created and displayed on the website are stored here
* feedback: feedback by the citizens are stored here
* party: The french political parties, their associated interessts, along with their votes are stored here

## Stored Procedures
* update_project_downvote: downvotes the project. Needs to remove upvote from the project if exists
* update_project_downvote: upvotes the project. Needs to remove downvote from the project if exists
* vote_for_party: votes for new party and removes vote from previously voted party
