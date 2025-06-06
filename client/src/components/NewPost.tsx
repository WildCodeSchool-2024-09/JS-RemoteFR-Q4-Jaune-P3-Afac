import "../styles/NewPost.css";
import { type FormEvent, useState } from "react";
import { useRevalidator } from "react-router-dom";
import { Flip, ToastContainer, toast } from "react-toastify";
import { postArtwork } from "../services/requests";
import SvgIcons from "./SvgIcons";

const icon = [
  {
    pen: {
      width: "21px",
      height: "21px",
      path: "M200-200h57l391-391-57-57-391 391v57Zm-80 80v-170l528-527q12-11 26.5-17t30.5-6q16 0 31 6t26 18l55 56q12 11 17.5 26t5.5 30q0 16-5.5 30.5T817-647L290-120H120Zm640-584-56-56 56 56Zm-141 85-28-29 57 57-29-28Z",
    },
  },
];

export default function NewPost({ category }: { category: Category[] }) {
  const [formValues, setFormValues] = useState<Partial<Artwork>>({
    title: "",
    description: "",
    picture: undefined,
    category_id: category[0].id,
  });

  const revalidate = useRevalidator();

  const formData = new FormData();

  formData.append("title", formValues.title as string);
  formData.append("description", formValues.description as string);
  formData.append("picture", formValues.picture as string);
  formData.append("category_id", String(formValues.category_id));

  const handleSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    try {
      await postArtwork(formData);
      toast.success("Post créé avec succès", {
        position: "top-right",
        autoClose: 2000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: false,
        draggable: true,
        progress: undefined,
        theme: "light",
        transition: Flip,
      });
      setFormValues({
        title: "",
        description: "",
        picture: undefined,
        category_id: category[0].id,
      });
      const modal = document.getElementById("modal") as HTMLDialogElement;
      modal?.close();
      revalidate.revalidate();
    } catch (error) {
      console.error(error);
    }
  };

  const handleChangeForm = (
    e:
      | React.ChangeEvent<HTMLInputElement>
      | React.ChangeEvent<HTMLTextAreaElement>
      | React.ChangeEvent<HTMLSelectElement>,
  ) => {
    setFormValues({
      ...formValues,
      [e.currentTarget.name]: e.currentTarget.value,
    });
  };

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.currentTarget.files?.[0]) {
      setFormValues({
        ...formValues,
        [e.currentTarget.name]: e.currentTarget.files[0],
      });
    }
  };

  return (
    <div className="new-post-container">
      <button
        type="button"
        className="new-post"
        onClick={() => {
          const modal = document.getElementById("modal") as HTMLDialogElement;
          modal?.showModal();
        }}
      >
        <SvgIcons
          path={icon[0].pen.path}
          height={icon[0].pen.height}
          width={icon[0].pen.width}
        />
        Créer
      </button>
      <dialog id="modal" className="modal">
        <form onSubmit={handleSubmit}>
          <input
            type="text"
            placeholder="Titre"
            value={formValues.title}
            name="title"
            onChange={handleChangeForm}
          />
          <textarea
            placeholder="Description"
            value={formValues.description}
            name="description"
            onChange={handleChangeForm}
          />
          <input type="file" name="picture" onChange={handleFileChange} />
          <select
            name="category_id"
            id="category_id"
            onChange={handleChangeForm}
          >
            {category.map((categorie) => (
              <option key={categorie.id} value={categorie.id}>
                {categorie.name}
              </option>
            ))}
          </select>
          <button type="submit">Créer</button>
        </form>
        <button
          type="button"
          className="btn-closeModal"
          onClick={() => {
            const modal = document.getElementById("modal") as HTMLDialogElement;
            modal?.close();
          }}
        >
          ✕
        </button>
      </dialog>
      <ToastContainer
        position="top-right"
        autoClose={2000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover={false}
        theme="light"
        transition={Flip}
      />
    </div>
  );
}
