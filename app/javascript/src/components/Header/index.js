import React from "react";
import styled from "styled-components";

const StyledHeader = styled.h1`
  color: red;
`;

function Header({ children }) {
  return <StyledHeader>{children}</StyledHeader>;
}

export default Header;
