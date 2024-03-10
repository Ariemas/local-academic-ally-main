"use client";

import button_css from "./Button.module.css"

interface ButtonOptions {
  name: string;
  onClick: (buttonName: string) => void;
}

export default function Button(options: ButtonOptions) {
  return <div className={button_css.div}>
    <button className={button_css.format} onClick={() => options.onClick(options.name)}>{options.name}</button>
  </div>;
}

