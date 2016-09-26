# README

Rails app example with **MANY TO MANY** association

RIGHT STEPS:
* Generating Product model with Title an Description fields
```
$ rails g model Product title:string description:text
```
* Generating Type model with Title field
```
$ rails g model Type title:string
```
* Adding has_and_belongs_to_many :(products/types) in their models
* Changing Database
```
$ rails db:migrate
```
* Making join table ProductsTypes
```
$ rails g migration ProductsTypes
```
Table should contain something like this:
```
def change
    create_table :products_types do |t|
      t.integer :product_id
      t.integer :type_id
    end
end
```
* Final changes to Database
```
$ rails db:migrate
```
Now you can use code like this:
```
Type.first.products # => Will return Products of first Type in table
Product.last.types # => Will return Types of last Product in table
Product.first << Type.last # => Will add to Types of first Product last Type in table
```
[link to Tutorial!](http://shilpi2189.blogspot.com/2013/01/implementing-hasandbelongstomany.html)
