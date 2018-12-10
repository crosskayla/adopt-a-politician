# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
      Voter has_many donations, Politician has_many donations
      Donation has_many donation_tags, Tag has_many donation_tags
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
      Donation belongs_to Politician and belongs_to Voter
      DonationTag belongs_to Donation and belongs_to Tag
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
      Voter has_many Politicians through Donations, Politician has_many Voters through Donations
      Donation has_many Tags through DonationTags, Tag has_many Donations through DonationTags
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
      Voter has_many Politicians through Donations, Politician has_many Voters through Donations
      Donation has_many Tags through DonationTags, Tag has_many Donations through DonationTags
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
      Donation attributes (dollars (amount), description, and url)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  Voter, Politician, Tag
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
      Voter.highest_donator, Politician.most_dollars, Politician.most_donations, Tag.most_popular
- [x] Include signup (how e.g. Devise)
      Sessions controller
- [x] Include login (how e.g. Devise)
      Sessions controller
- [x] Include logout (how e.g. Devise)
      Sessions controller
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
      politicians/1/donations
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
      politicians/1/donations/2
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
      /users/new

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
