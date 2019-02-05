crumb :root do
  link "Home", root_path
end

crumb :classifieds do
  link "クラシファイド", classifieds_path
  parent :root
end

crumb :areas do 
  link "全エリア", areas_path
  parent :classifieds
end

crumb :area do |area|
  link area.name, area
  parent :classifieds
end

crumb :categories do
  link "全カテゴリー", categories_path
  parent :classifieds
end

crumb :category do |category|
  link category.name, category
  parent :classifieds
end

crumb :detail do 
  link "詳細", classified_path
  parent :classifieds
end

crumb :user do |user|
  link user.id, user
end

crumb :inquiry do
  link "お問い合わせ", inquiry_path
  parent :root
end