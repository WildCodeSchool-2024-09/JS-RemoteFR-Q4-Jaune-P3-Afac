import { createContext, useContext, useEffect, useState } from "react";
import type { ReactNode } from "react";

interface AuthProviderProps {
  children: ReactNode;
}

interface AuthProps {
  role: string;
  setRole: (role: string) => void;
  currentUser: {
    id: number;
    username: string;
    picture: string;
    email: string;
    is_admin: boolean;
    bio: string;
    portfolio: string;
    website: string;
  };
  setCurrentUser: (user: {
    id: number;
    username: string;
    picture: string;
    email: string;
    is_admin: boolean;
    bio: string;
    portfolio: string;
    website: string;
  }) => void;
}

const authContext = createContext<AuthProps | null>(null);

export function AuthProvider({ children }: AuthProviderProps) {
  const [role, setRole] = useState(localStorage.getItem("role") || "anonymous");
  const [currentUser, setCurrentUser] = useState(
    JSON.parse(
      localStorage.getItem("user") ||
        JSON.stringify({
          id: 0,
          username: "",
          picture: "",
          email: "",
          is_admin: false,
          bio: "",
          portfolio: "",
          website: "",
        }),
    ),
  );

  useEffect(() => {
    if (role !== "anonymous") {
      localStorage.setItem("role", role);
      localStorage.setItem("user", JSON.stringify(currentUser));
    }
  }, [role, currentUser]);

  return (
    <authContext.Provider
      value={{ role, setRole, currentUser, setCurrentUser }}
    >
      {children}
    </authContext.Provider>
  );
}

export default function Auth() {
  const context = useContext(authContext);

  if (!context) {
    throw new Error("Le auth context doit exister");
  }
  return context;
}
