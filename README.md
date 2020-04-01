# Financial-Planner

This is a personal project I have been working on in my spare time.<br/>
It started with my sisters boyfriend Max, he had been making a budget and wanted to know if at his current savings rate, he would reach his financial goals.
I said I would make a prediction if he gave me the numbers.<br/>
Quickly I realised this process could be automated using ruby.

## My development process
1. First I started by writing a simple method to project his future net worth given a regular saving of £825pm and a 10% return on investment, and £16000 principal.
   - Savings invested in an index fund such as the S&P 500 have historically returned an average of approximately 10% interest a year.

   ```
   saving_pm = 825
   interest_rate_pa = 1.1
   years = 30
    starting_cash = 16_000

    def calculate(saving_pm, interest_rate_pa, years, starting_cash)

      total = starting_cash

      years.times {
       total += saving_pm * 12
        total = total*interest_rate_pa
        saving_pm = saving_pm + saving_increase
      }

      total

    end
    ```
2. This worked a charm! It turns out after 30 years he would have around £2,070,530. Not bad!
3. I decided it would be lovely it this could be projected onto a graph.
4. I found a ruby gem online called gruff that can generate graphs so I ran the following in my terminal:
   ```
   bundle init
   ```
5. Then I added the following into my Gemfile
    ```
    gem 'rmagick', :require => false
    gem 'gruff'
    gem "chartkick"
    ```
6. Then I ran bundle
    ```
    bundle
    ```
7. At this point I managed to get my program making beautiful graphs.
8. I decided this was too interesting and it was time to do this properly using a Test Driven approach, so I ran:
    ```
    rspec --init
    ``` 
9. Then I created a repository on Github, and ran:
    ```
    git init
    git commit -m "first commit"
    git remote add origin git@github.com:tommyrharper/Financial-Planner.git
    git push -u origin master
    ```