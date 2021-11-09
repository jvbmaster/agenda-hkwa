final createTable = '''
  CREATE TABLE contact(
    id INT PRIMARY KEY
    , nome TEXT NOT NULL,
    , telefone TEXT NOT NULL,
    , email TEXT NOT NULL
    , url_avatar TEXT BOT NULL
  )
''';

final insert = '''
  INSERT into contact (nome, telefone, email, url_avatar)
  values (
    'Julio Vitor Barbieri',
    '17 9 9178-8469',
    'barbieri.master@outlook.com',
    'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
  )
''';
