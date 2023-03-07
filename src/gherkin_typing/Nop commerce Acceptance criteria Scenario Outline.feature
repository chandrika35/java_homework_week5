Feature: Bookcategory

Background: I should be able to see homepage
Given I enter URL "https://demo.nopcommerce.com/" in browser
And I am on home page

Scenario Outline: I should be aable to see top menu tab on homepage with categorie
When I am on home pageThen I should be able to see top menu tabs with "<categories>"

Examples:
  |Categories
  |Computer           |
  |Electronic         |
  |Apparel            |
  |Digital diwnloads  |
  |Books              |
  |GIft Card          |

  Scenario Outline: I should be able to see book page with filters
  When I select book category from top menu tabs on home page
    And I should be able to see"<filters>"
   Examples:
    |FIlters |
    |Sortby  |
    |Display |
    |The Grid|
    |List Tab|

Scenario Outline: I should be able to choose any filter option with specific result
Given I am on book page
When I click on "<filter>"
And I click on any "<option>"
Then I should be able to choose any filter option from the list
And I should be able to see "<result>"
Examples:
|Filter      |option            |result                                                           |
|Soet by     |Name: A to Z      |SOrted product with the product name in alphabetical order A to Z|
|Sort by     |Name: Z to A      |Sorted product with the product name in alphabetical order Z to A|
|Sort by     |Price: Low to High|Sorted product with the price in ascending order                 |
|Sort by     |Price: High to Low|Sorted product with the price in descending order                |
|Sort by     |Created on        |Recently added products should be displayed first                |
|Display     |3                 |3 products in a page                                             |
|Display     |6                 |6 products in a page                                             |
|Display     |9                 |9 products in a page                                             |

Scenario Outline: I should be able to see product display format accordingy display format type as per given picture in srs doccument
Given I am on book page
When I click on "<display format icon>"
Then I should be able to see product display format accordingly display format type as per given picture in srs doccument

  Examples:
  |Display format icon|
  |Grid               |
  |List               |


