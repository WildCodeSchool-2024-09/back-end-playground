import type { RequestHandler } from "express";
import userRepository from "./userRepository";

const add: RequestHandler = async (req, res, next) => {
  try {
    const user = {
      name: req.body.name,
      lastname: req.body.lastname,
      birthday: req.body.birthday,
      email: req.body.email,
      password: req.body.password,
    };

    const insertId = await userRepository.create(user);

    res.sendStatus(201).json({ insertId });
  } catch (error) {
    console.error(error);
    next(error);
  }
};

export default { add };
