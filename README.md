# Ruby on Rails実践講座

## 第18回 自動車販売店の販売管理の続き

### 手順書(Googleドキュメント)のURL

- 仕様書03：https://docs.google.com/document/d/1LnWgiNkixS6-3xlPF2nMMxvkE5ijOefniKfg0vK8q40/edit?usp=sharing


### プロダウンメニューの追加

1. 販売データの登録・編集で社員名の選択メニューを表示→app/views/sales/_form.html.erbの21行目

  - 変更前:<%= f.text_field :employee_id %>
  - 変更後:<%= f.collection_select(:employee_id, Employee.all, :id, :name) %>

2. 販売データの登録・編集で車名の選択メニューを表示→app/views/sales/_form.html.erbの26行目

  - 変更前:<%= f.text_field :car_id %>
  - 変更後:<%= f.collection_select(:car_id, Car.all, :id, :name) %>


### 社員名と車名の表示

1. 販売一覧で社員名を表示→app/views/sales/index.html.erbの19行目

  - 変更前:<td><%= sale.employee %></td>
  - 変更後:<td><%= sale.employee.name %></td>

2. 販売一覧で車名を表示→app/views/sales/index.html.erbの20行目

  - 変更前:<td><%= sale.car %></td>
  - 変更後:<td><%= sale.car.name %></td>

3. 販売詳細で社員名を表示→app/views/sales/show.html.erbの10行目

  - 変更前:<%= @sale.employee %>
  - 変更後:<%= @sale.employee.name %>

4. 販売詳細で車名を表示→app/views/sales/show.html.erbの15行目

  - 変更前:<%= @sale.car %>
  - 変更後:<%= @sale.car.name %>


### 他ページへのリンクの追加

1. 販売一覧の最下行にリンクを追加→app/views/sales/index.html.erbの31,32,33行目

  - 31: <%= link_to '新規登録', new_sale_path %> |
  - 32: <%= link_to '社員マスター', controller: :employees, action: :index %> |
  - 33: <%= link_to '自動車マスター', controller: :cars, action: :index %>

2. 社員マスターの最下行にリンクを追加→app/views/employees/index.html.erbの29,30行目

  - 29: <%= link_to '新規登録', new_employee_path %> |
  - 30: <%= link_to '販売一覧', controller: :sales, action: :index %>

3. 自動車マスターの最下行にリンクを追加→app/views/cars/index.html.erbの33,34行目

  - 33: <%= link_to '新規登録', new_car_path %> |
  - 34: <%= link_to '販売一覧', controller: :sales, action: :index %>

### 動作確認後にバックアップ

  - $ git add -A
  - $ git commit -m "Add Menu & Link"

### クラウドへのアップロード

1. BitBucketに登録
2. Herokuにデプロイ


### 今後の展開（※追加機能の草案）

1. 販売一覧に定価、税額、合計を表示する
2. 社員別の売上実績のページ追加
3. その他


### 参考サイト

1. Ruby on Railsドキュメント: http://railsdoc.com/
2. Ruby on Railsガイド: https://railsguides.jp/
