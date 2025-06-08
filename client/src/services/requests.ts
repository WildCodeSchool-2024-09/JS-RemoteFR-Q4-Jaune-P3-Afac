import axios, { AxiosError } from "axios";

const baseUrl = import.meta.env.VITE_API_URL;

const getAllArtwork = async () => {
  try {
    const response = await axios.get(`${baseUrl}/api/artworks`);

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch artworks");
  }
};

const getArtworkById = async (id: number) => {
  try {
    const response = await axios.get(`${baseUrl}/api/artworks/${id}`);
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch artwork");
  }
};

const getUserById = async (id: number) => {
  try {
    const response = await axios.get(`${baseUrl}/api/users/${id}`);
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch users");
  }
};

const getCategory = async () => {
  try {
    const response = await axios.get(`${baseUrl}/api/category`);
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch category");
  }
};

const postCreateUser = async (userData: UserTypes) => {
  try {
    const response = await axios.post(`${baseUrl}/api/users`, userData, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    if (error instanceof AxiosError) {
      throw new Error(error.response?.data || "Failed to create user");
    }
    throw new Error("Failed to create user");
  }
};

const getEventDetails = async (id: number) => {
  try {
    const response = await axios.get(`${baseUrl}/api/events/${id}`);

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch event details");
  }
};

const getCurrentEvents = async () => {
  try {
    const response = await axios.get(`${baseUrl}/api/events/current`);

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch current events");
  }
};

const getUpcomingEvents = async () => {
  try {
    const response = await axios.get(`${baseUrl}/api/events/upcoming`);

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch upcoming events");
  }
};

const getArtworksBySearch = async (search: string) => {
  try {
    const response = await axios.get(`${baseUrl}/api/search/${search}`);
    return response.data;
  } catch (error) {
    throw new Error("Failed to fetch artworks");
  }
};

const postLogin = async (credentials: CredentialsTypes) => {
  try {
    const response = await axios.post(`${baseUrl}/api/login`, credentials, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    throw new Error();
  }
};

const Logout = async () => {
  try {
    const response = await axios.get(`${baseUrl}/api/logout`, {
      withCredentials: true,
    });

    localStorage.removeItem("user");
    localStorage.removeItem("role");

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to logout");
  }
};

const getArtworkByUser = async (id: number) => {
  try {
    const response = await axios.get(`${baseUrl}/api/artworks/user/${id}`);

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to fetch data");
  }
};

const updateUserData = async (formData: FormData) => {
  try {
    const response = await axios.put(`${baseUrl}/api/users`, formData, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error();
  }
};

const postArtwork = async (formData: FormData) => {
  try {
    const response = await axios.post(`${baseUrl}/api/artworks`, formData, {
      withCredentials: true,
    });

    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to create artwork");
  }
};

const postEvent = async (eventData: FormDataCreateEvent) => {
  try {
    const response = await axios.post(`${baseUrl}/api/events`, eventData, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    if (error instanceof AxiosError && error.response?.status === 403) {
      alert("Vous n'avez pas les permissions pour créer un événement");
    }
    console.error(error);
    throw new Error("Failed to create event");
  }
};

const deleteEvent = async (id: number) => {
  try {
    const response = await axios.delete(`${baseUrl}/api/events/${id}`, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to delete data");
  }
};

const postArtworkToEvent = async (artworkId: number, eventId: number) => {
  try {
    const response = await axios.post(
      `${baseUrl}/api/event_artworks`,
      {
        artwork_id: artworkId,
        event_id: eventId,
      },
      {
        withCredentials: true,
      },
    );
    return response.data;
  } catch (error) {
    console.error(error);
    throw new Error("Failed to add artwork to event");
  }
};

const addLike = async (id: number) => {
  try {
    const response = await axios.post(
      `${baseUrl}/api/likes`,
      {
        artwork_id: id,
      },
      {
        withCredentials: true,
      },
    );
    return response.data;
  } catch (error) {
    console.error("Erreur lors de l'ajout du like:", error);
    return false;
  }
};

const removeLike = async (id: number) => {
  try {
    const response = await axios.delete(`${baseUrl}/api/likes/${id}`, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    console.error(error);
    return false;
  }
};

const checkIfLiked = async (id: number) => {
  try {
    const response = await axios.get(`${baseUrl}/api/checklike/${id}`, {
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    console.error(error);
    return false;
  }
};

const deleteArtwork = async (id: number, userId: number) => {
  try {
    const response = await axios.delete(`${baseUrl}/api/artworks/${id}`, {
      data: {
        user_id: userId,
      },
      withCredentials: true,
    });
    return response.data;
  } catch (error) {
    if (error instanceof AxiosError && error.response?.status === 403) {
      alert("Vous n'avez pas les permissions pour supprimer cette oeuvre");
    }
    console.error(error);
    throw new Error("Failed to delete artwork");
  }
};

const editArtwork = async (id: number, artworkData: Partial<Artwork>) => {
  try {
    const response = await axios.put(
      `${baseUrl}/api/artworks/${id}`,
      artworkData,
      {
        withCredentials: true,
      },
    );
    return response.data;
  } catch (error) {
    if (error instanceof AxiosError && error.response?.status === 403) {
      alert("Vous n'avez pas les permissions pour modifier cet Oeuvre");
    }
    console.error(error);
    throw new Error("Failed to update artwork");
  }
};

const addComment = async (id: number, commentText: string) => {
  try {
    const response = await axios.post(
      `${baseUrl}/api/comment`,
      {
        artwork_id: id,
        comment_text: commentText,
      },
      {
        withCredentials: true,
      },
    );
    return response.data;
  } catch (error) {
    console.error(error);
  }
};

export {
  addComment,
  addLike,
  checkIfLiked,
  deleteArtwork,
  deleteEvent,
  editArtwork,
  getAllArtwork,
  getArtworksBySearch,
  getCategory,
  postCreateUser,
  getUserById,
  getEventDetails,
  getCurrentEvents,
  getUpcomingEvents,
  getArtworkById,
  getArtworkByUser,
  Logout,
  updateUserData,
  postLogin,
  postArtwork,
  removeLike,
  postArtworkToEvent,
  postEvent,
};
