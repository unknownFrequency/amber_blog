-- +micrate Up
ALTER TABLE post_comments 
ADD COLUMN `name` VARCHAR(30) NOT NULL;

-- SQL in section 'Up' is executed when this migration is applied

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
