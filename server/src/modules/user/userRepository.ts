import databaseClient from "../../../database/client";

import type { Result, Rows } from "../../../database/client";

type User = {
  name: string;
  lastname: string;
  birthday: Date;
  email: string;
  password: string;
};

class UserRepository {
  async create(user: User) {
    const { name, lastname, birthday, email, password } = user;

    const [result] = await databaseClient.query<Result>(
      "INSERT INTO USER (name, lastname, birthday, email, password) VALUES (?, ?, ?, ?, ?)",
      [name, lastname, birthday, email, password],
    );

    return result.insertId;
  }
}

export default new UserRepository();
