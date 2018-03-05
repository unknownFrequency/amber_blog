-- +micrate Up
CREATE TABLE post_comments (
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  post_id BIGINT,
  body TEXT,
  created_at TIMESTAMP NULL,
  updated_at TIMESTAMP NULL
);
CREATE INDEX post_comment_post_id_idx ON post_comments (post_id);

-- +micrate Down
DROP TABLE IF EXISTS post_comments;
