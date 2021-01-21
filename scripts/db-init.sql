drop table if exists lab17_articles;

create table lab17_articles (
  id int not null primary key auto_increment,
  title varchar(128),
  content text,
  imageFilename varchar(128)
);

insert into lab17_articles (title, content, imageFilename) values
  ('Cheetah', 'The <strong class="important">cheetah</strong> (/ˈtʃiːtə/; Acinonyx jubatus) is a large cat of the subfamily Felinae that occurs in North, Southern and East Africa, and a few localities in Iran.', 'cheetah.jpg'),
  ('Tiger', 'The <strong>tiger</strong> (Panthera tigris) is the largest species among the Felidae and classified in the genus Panthera. It is most recognizable for its dark vertical stripes on reddish-orange fur with a lighter underside.', 'tiger.jpg'),
  ('Meow meow', 'The <strong>meow meow</strong> (Cattus meowus) is a tiny ball of fluff which is known for decimating furniture, delivering animal carcasses to unsuspecting humans, and being able to make anyone fall in love with it immediately.', 'meow.jpg');