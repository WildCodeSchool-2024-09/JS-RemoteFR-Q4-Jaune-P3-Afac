import { Link } from "react-router-dom";
import "../styles/PicturesHome.css";

const baseUrl = import.meta.env.VITE_API_URL;

export default function PicturesHome({ artworks }: Artworks) {
  return (
    <section className="masonry-gallery">
      {artworks.length > 0 ? (
        artworks.map((artwork) => (
          <Link
            to={`/artwork/${artwork.id}`}
            key={artwork.id}
            className="masonry-item"
          >
            <img
              src={`${baseUrl}/uploads/${artwork.picture}`}
              alt={artwork.description}
            />
          </Link>
        ))
      ) : (
        <p>Aucun résultat</p>
      )}
    </section>
  );
}
