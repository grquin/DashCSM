import React from "react";
import type { AvatarProps } from "antd";
import { Avatar as AntdAvatar } from "antd";
import { getNameInitials, getRandomColorFromString } from "@/utilities";

type Props = AvatarProps & {
  name?: string;
  imageName?: string;
};

const CustomAvatarComponent = ({ name = "", imageName, style, ...rest }: Props) => {
  const imageUrl = imageName ? `/images/users/${imageName}` : undefined;

  return (
    <AntdAvatar
      alt={name}
      size="small"
      src={imageUrl}
      style={{
        backgroundColor: imageUrl ? "transparent" : getRandomColorFromString(name),
        display: "flex",
        alignItems: "center",
        border: "none",
        ...style,
      }}
      {...rest}
    >
      {!imageUrl && getNameInitials(name)}
    </AntdAvatar>
  );
};

export const CustomAvatar = React.memo(
  CustomAvatarComponent,
  (prevProps, nextProps) => {
    return prevProps.name === nextProps.name && prevProps.src === nextProps.src;
  },
);
