drop table if exists lab_practice;

create table lab_practice (
  id int not null primary key auto_increment,
  firstName varchar(128),
  content text,
  imageFilename varchar(128)
);

insert into lab_practice (firstName, content, imageFilename) values
  ('Bob','Bob spends his days with his hands in many different areas of web development from back end programming (PHP, Django/Python, Ruby on Rails) to front end engineering (HTML, CSS, and jQuery/Javascript), digital accessibility, user experience and visual design.', 'bob432.jpg'),
  ('Alice','Alice specializes in Internet Marketing which includes online placement, social media assistance, website development and optimization. ', 'alice132.jpg');
