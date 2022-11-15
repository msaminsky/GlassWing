# Build a phoenix liveview project for a congressional transparency tool

## Designing the data schema
What information do we want? 
How is it structured? 
What needs to be generalized, what needs to be specific?
Let's take a look at some data and see what's interesting (https://api.govinfo.gov/docs/) (will require getting an API key)

## Setting up a liveview project 

- for these initial steps, I just followed this [fantastic tutorial](https://medium.com/swlh/tutorial-693a566ea417). Boiling down the basics below

### 1. Create a new project 
```elixir
mix phx.new --live glass_wing
```
#### generate some database tables
```
mix phx.gen.live  Item items description:string priority:string is_done:boolean
```