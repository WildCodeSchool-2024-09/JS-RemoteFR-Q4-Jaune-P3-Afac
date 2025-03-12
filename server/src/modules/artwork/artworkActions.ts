import type { RequestHandler } from "express";

import userRepository from "../user/userRepository";
import artworkRepository from "./artworkRepository";

const browse: RequestHandler = async (req, res, next) => {
  try {
    const artworks = await artworkRepository.readAll();

    res.status(200).json(artworks);
  } catch (err) {
    next(err);
  }
};

const read: RequestHandler = async (req, res, next) => {
  try {
    const artworkId = Number(req.params.id);
    const artwork = await artworkRepository.read(artworkId);

    if (artwork == null) {
      res.sendStatus(404);
    } else {
      res.json(artwork);
    }
  } catch (err) {
    next(err);
  }
};

const readBySearch: RequestHandler = async (req, res, next) => {
  try {
    const { search } = req.params;
    const artworks = await artworkRepository.readBySearch(search);
    if (artworks == null) {
      res.sendStatus(404);
    } else {
      res.json(artworks);
    }
  } catch (error) {
    next(error);
  }
};

const edit: RequestHandler = async (req, res, next) => {
  try {
    const artwork = {
      title: req.body.title,
      description: req.body.description,
      category_id: req.body.category_id,
      user_id: req.body.user_id,
      id: Number(req.params.id),
    };

    if (Number(req.user.id) === Number(artwork.user_id)) {
      const affectedRows = await artworkRepository.update(artwork);

      if (affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    } else {
      res.sendStatus(403);
    }
  } catch (error) {
    next(error);
  }
};

const add: RequestHandler = async (req, res, next) => {
  try {
    const artwork = {
      title: req.body.title,
      description: req.body.description,
      picture: req.body.picture,
      category_id: req.body.category_id,
      user_id: req.user.id,
    };

    const insertId = await artworkRepository.create(artwork);

    res.status(201).json({ insertId });
  } catch (err) {
    next(err);
  }
};

const destroy: RequestHandler = async (req, res, next) => {
  try {
    const artworkId = Number(req.params.id);
    const userId = Number(req.body.user_id);

    if (Number(req.user.id) === Number(userId)) {
      await artworkRepository.delete(artworkId);

      res.sendStatus(204);
    } else {
      res.sendStatus(403);
    }
  } catch (error) {
    next(error);
  }
};

const searchArtwork: RequestHandler = async (req, res, next) => {
  try {
    const { search } = req.params;
    const artworks = await artworkRepository.readBySearch(search);
    res.json(artworks);
  } catch (error) {
    next(error);
  }
};

const readByUserId: RequestHandler = async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    const user = await userRepository.read(id);
    const artworks = await artworkRepository.readByUserId(id);
    res.json({ user: user, artworks: artworks });
  } catch (error) {
    next(error);
  }
};

export default {
  browse,
  read,
  edit,
  add,
  destroy,
  readByUserId,
  readBySearch,
  searchArtwork,
};
