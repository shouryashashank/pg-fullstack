# Fullstack Postgres Vehicle App: The Database That Ate My Frontend! 🚗 🗄️

Welcome, brave adventurer, to a full-stack application so... unique, that it laughs in the face of conventional architecture. Prepare to be amazed! (Or mildly confused. Either way, we're having fun!)

## What IS this Madness? 🤔

This project is a complete full-stack application built entirely within the glorious confines of PostgreSQL. Yes, you read that right. We've gone full database-crazy!

*   **Backend:** PostgreSQL, baby! Using PostgREST to expose REST APIs.
*   **Frontend:** Also PostgreSQL! SQL functions craft HTML strings, which are then rendered using PostgREST RPC calls. 🤯
*   **Database:** A PostgreSQL database using a document DB structure because... well, because we *could*! 😎

Think of it as Inception, but instead of layers of dreams, it's layers of SQL.

## Why? Just... Why? 🤪

Because we live for chaos. And to prove that you can build *anything* with Postgres if you're determined (or slightly unhinged). Also, it's a fun learning experience to push the boundaries! 🤓

## Features ✨

*   Displays vehicles stored in a PostgreSQL database.
*   Uses JSONB for flexible vehicle data storage.
*   HTML is generated directly from the database!
*   Probably the most unorthodox full-stack architecture you've ever seen.

## Getting Started 🚦

### Prerequisites

*   Docker (because who wants to install Postgres directly? 😅)
*   Docker Compose (because life is too short for manual container orchestration)

### Installation Instructions

1.  Clone this repository. 💾

```bash
    git clone [your repo link here]
    cd [repo directory]
```

2.  Fire up the Podman Compose magic. ✨ or docker if you are still using it
    ```bash
        podman compose up
    ```
    or docker if you are still using it
    ```bash
        docker-compose up
    ```


    This will:

    *   Build a PostgreSQL server. 🐘
    *   Start a PostgREST instance to serve the API. 🌐
    *   Launch Swagger UI to explore the API. 📜

3.  Execute the SQL scripts to bring this Frankenstein to life. 👨‍🔬 ⚡ There are two Jupyter Notebooks containing the SQL scripts:

    *   `sql_script.ipynb`: Creates the `ft.vehicle` table and inserts initial data.
    *   `frontend.ipynb`: Creates the SQL functions that serve HTML content.
    **Make sure to execute them in order**.

    🚨 **Important Note:** You'll need to have Jupyter Notebook or VSCode  or Microsoft Data Studio with the Jupyter and postgres database extension installed.

4.  The frontend should be available at [http://localhost:3000](http://localhost:3000). Prepare to be amazed (or slightly nauseated)! 😵‍💫
5.  Visit [http://localhost:8080](http://localhost:8080) to access Swagger UI and explore the API endpoints. 🧭


### Database Structure

We're storing vehicle information in a table called `ft.vehicle`.

```sql
CREATE TABLE ft.vehicle (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE,
  data JSONB
);

INSERT INTO ft.vehicle (name, data) VALUES ('Honda CB500X', '{"type":"bike","year":"2021","make":"Honda","engine_type":"2-cylinder","transmission":"manual"}');
```

## Usage 🕹️

*   Use Swagger UI to explore the API endpoints.
*   Marvel at the HTML-generating SQL functions.
*   Question your life choices. 🤷‍♀️

## Contributing 🤝

If you're feeling brave (or foolish), feel free to contribute! But be warned, this project may break your brain.

1.  Fork the repository.
2.  Create a new branch.
3.  Make your changes.
4.  Submit a pull request.

## License 📝

* This project is licensed under the "WTFPL" License - Do What The Fuck You Want To Public License. In other words, do whatever you want with it. I'm not responsible if it causes a black hole to form in your database server. 😜

## Acknowledgements 🙏

*   The PostgreSQL community, for making this madness possible.
*   PostgREST, for being the gateway drug to database-driven insanity.
*   My sanity, which I sacrificed for this project. 💀

## Contact 📧

If you have any questions, concerns, or existential crises, feel free to raise an issue.

## Disclaimer ⚠️

Use this project at your own risk. Side effects may include: confusion, database hallucinations, and an overwhelming urge to rewrite everything in JavaScript.