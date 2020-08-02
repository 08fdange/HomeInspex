# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) Inspector has_many Inspections
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) Inspection belongs_to Client
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) Inspector has_many Clients through Inspections + Client has_many Inspectors through Inspections
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) See above
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) Client/Inspector has built in validations through Devise, Inpections have address presence and uniqueness validations and inspection_date presence validation.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) Inspector.order_by_last_name sorts last names of Inspectors
- [x] Include signup (how e.g. Devise) Devise for Client and Inspector
- [x] Include login (how e.g. Devise) see above
- [x] Include logout (how e.g. Devise) see above
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) Devise for both user models and Omniauth google and facebook for Client model
- [x] Include nested resource show or index (URL e.g. users/2/recipes) inspectors/1/inspections
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) client/inspections/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) client/inspections/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
