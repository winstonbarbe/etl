# ETL

## Exercise Overview

ETL, which stands for ["Extract, Transform, Load"](https://en.wikipedia.org/wiki/Extract,_transform,_load), is the procedure of transferring data from one system to another, while changing the format of the data in the process.

That is, we:

1. Extract: Take out the data from the old system
2. Transform: Change the format of the data
3. Load: Put the changed data into the new system

In this exercise, we're going to do a kind of ETL regarding data around the scoring of the game Scrabble. The details are below.

## A Note About Decomposition

Before starting to attack the whole problem at once, list out smaller problems that you can solve first. Come up with at least three easier subproblems that you can solve:

-
-
-

Make sure to write the code for these subproblems before coding the complete exercise solution.

## Exercise Details

You'll be completing the code for the `transform` method inside the file called `etl.rb`.

The entire idea behind ETL is that you can store one chunk of data in multiple ways. Let's see this in action when dealing with Scrabble scores.

For this exercise, you don't need to know how to play Scrabble. All you need to know is that in this classic board game, each letter of the alphabet has a particular numerical score associated with it. Here's how many points each letter is worth:

- 1 point: A, E, I, O, U, L, N, R, S, T
- 2 points: D, G
- 3 points: B, C, M, P
- 4 points: F, H, V, W, Y
- 5 points: K
- 8 points: J, X
- 10 points: Q, Z

In this exercise, we're going to transform an "old" way of storing this data into a "new" way of storing the same data.

### The Old Format

Here's how the Scrabble score data is currently stored in the "old" system:

```
{
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}
```

As you can see, the "old" format stores the data in a giant hash, where each key is the numerical score, and the value is an array of all letters that earn that score.

### The New Format

Your goal is to complete the `transform` method which will accept the above hash from the "old" format (this gets plugged into the `old_data` argument) and transform it into the "new" format, which should look like this:

```
{
  'a' => 1,
  'b' => 3,
  'c' => 3,
  'd' => 2,
  'e' => 1,
  'f' => 4,
  'g' => 2,
  'h' => 4,
  'i' => 1,
  'j' => 8,
  'k' => 5,
  'l' => 1,
  'm' => 3,
  'n' => 1,
  'o' => 1,
  'p' => 3,
  'q' => 10,
  'r' => 1,
  's' => 1,
  't' => 1,
  'u' => 1,
  'v' => 4,
  'w' => 4,
  'x' => 8,
  'y' => 4,
  'z' => 10
}
```

As you can see, the "new" format contains the very same information as the "old" format; it's just stored in a different way.

In this "new" format, the data is also stored as a giant hash. However, in this hash, each key is a letter, and the value is the numerical score that each letter earns.

One additional difference is that in the "new" version, all the letters are stored in lowercase, while the "old" version stored them in uppercase.

## New Unit Tests!

In this exercise, we've upgraded our unit tests. In the previous deep dives, we used plain Ruby to write our unit tests. However, in real life, unit tests are usually written using specialized _testing frameworks_.

Under the hood, a testing framework essentially runs unit tests just like the ones we had previously. However, the framework offers some extra benefits, including:

- A more consistent way of writing tests
- More test output in the terminal, including showing you what's going wrong when a test fails
- Output with colors! (This may need some additional setup, but works by default on some computers.)

We're using a test framework called "Minitest", which actually comes built into the Ruby language. (Other test frameworks exist, and are available as gems.)

We're not going to present an entire Minitest tutorial here, but you're encouraged to discover more about Minitest by doing your own research. However, here are the very basics:

- In Minitest, each unit test is written in the form of a method. So, each `def`...`end` block serves as a single unit test.
- The `skip` keyword skips a unit test. In the test file here, only the first test is active. To activate the other tests, simply comment out the `skip` keyword for each test.
- In the tests here, each test contains an `assert_equal` command. This command accepts two arguments, and checks if they're both equal. If they're equal, the test will pass; otherwise, the test fails. For example, if we have a test:

```
x = 1
assert_equal 1, x
```

This test will pass, since `1` and `x` are equal. Similarly, if we had:

```
def add(x, y)
  return x + y
end

assert_equal 4, add(2, 2)
```

This test will also pass, since the return value of `add(2, 2)` will be equal to `4`.

However, if we had:

```
def add(x, y)
  return x - y
end

assert_equal 4, add(2, 2)
```

The above test would fail. Our test expects that `add(2, 2)` should compute to `4`, but since the current `add` method is written incorrectly (with subtraction rather than addition), this test will fail.

The unit tests are found in the `test_etl.rb` file. You can run the tests in the usual way, with:

```
ruby test_etl.rb
```

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
