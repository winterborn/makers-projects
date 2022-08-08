# How to Decompose or Deconstruct a Problem

### Intro

As we progress through the course, indeed through our career as Software Developers, we come across increasingly more difficult problems. Our ability to tackle problems all at once begins to lessen and we can sometimes approach a problem or a project feeling overwhelmed.

This is incredibly common, and is not indicitive of your true ability. We could look at hundreds of metaphors and analogies from sports teams, working together to break down solutions, to Construction workers & Architects planning and blueprinting, to Detectives or Investigative Journalists applying methodical approaches.

But today we're going to talk about Cake.

### Russian Naturalism & Cake

Stanislavski was a Russian Theatre practicioner who revolutionised drama, but he also came up with a very handy analogy for tackling big problems.

Stanislavski said, when you are facing a large problem or task (in his case characters & plays, in our case Programs & Requirements), you could think of it as a Cake.

When attempting to eat a Cake, one does not simply walk up to it and attempt to stuff the entire dessert into one's mouth. It would be unacheivable and you'll likely fail.

Instead, you might try slicing the cake into sections. How large or small the sections, is entirely up to you. When beggining this process, it's natural to start off with smaller slices, working methodically through the Cake (Problem/Program).

As you progress in your Cake swallowing abilities, you're able to judge larger slices.

But! Should you ever feel dissuaded at the size of the slice you have cut for yourself, fear not - for one can always cut that slice down further too.

And so could we approach a larger problem in Software Development.

This tendancy to break things up into component parts will come more naturally as you move further into the course and come to utilise Test Driven Development, but for now, let's look at our problem, and dissect, or Decompose, it into more managable chunks.

### The Cake is a lie

In our program section of Chapter 2 we have the following challenge:

1. #### Requirements

 The password manager will need to:
 - Allow you add new, validated, passwords
 - Allow you to view a specific password
 - Allow you to see a list of all the services for which a password has been stored

2. #### Decomposing the Problem

 - You're going to need three methods:
   - `add`, which is used to add a new password
   - `password_for`, which returns the password for a given service
   - `services`, which returns a list of all the services for which a password has been stored
 - The passwords will be stored in hash, where the key is the service and the value is the password
 - This hash will need to be stored in an instance variable

Let's break that Cake down into delicious slices. What's the first thing we need to do?

Well - we know we're going to working on a class, and that class is going to need at least three methods, so we might go about building out that structure:

``` ruby
    class PasswordManager
    
        def add
        # ?
        end

        def password_for
        # ?
        end

        def services
        # ?
        end
    end
```

Now lets read the rest of the requirements and break them down:

> "The passwords will be stored in a `hash`..."

Ok! How do we create a hash?

> "... where the `key` is the service"

Great, so we know that when we create our hash items, the key will be added in as a service

> "... and the `value` is the password."

And the other half of the hash item, the value, is going to be added in as the password.

> "This `hash` will need to be stored in an instance variable"

Fantastic, so we know that our hash that stores the 'service' and the 'password' is going to be stored in the class as an instance variable. 

**First step**,  let's create an instance variable in our class that stores a hash.

What is the next step?

How are you going to pass the information through into the instance variable?

What syntax do you need to consider when doing this?

These are just some example questions to get you started. If you have got to this stage you have done all the required exercises to be able to achieve a solution to this problem. If at any stage you hit a bit of a wall, simply cut that section down into a smaller chunk.

*Remember*

Use `p` or `puts` throughout your code to test the values of your objects. Tracing in this way will help you understand what is happenning to the data as you pass it through your program.

### Good Luck and Eat Cake 

*(just not all in one go!)*
