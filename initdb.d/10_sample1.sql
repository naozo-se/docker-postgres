-- サンプルのテーブル作成
create table sample1(
    id serial,
    col1 text,
    col2 text,
    primary key (id)
);

-- サンプルのテーブルにデータを登録
insert into sample1(col1, col2)values('aaa', '1111');
insert into sample1(col1, col2)values('bbb', '2222');
insert into sample1(col1, col2)values('ccc', '3333');
insert into sample1(col1, col2)values('ddd', '4444');
