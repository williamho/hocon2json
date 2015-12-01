# Installation

```bash
bundle install
```

# Usage

## Command line

```bash
echo 'hello: world' | ./hocon2json.rb
```

## Sinatra

```bash
bundle exec ruby app.rb

# In another shell
curl localhost:4567 -d'hello: world'
echo 'hello: world' | curl localhost:4567 -d @-
```

# Output
```bash
{
  "hello": "world"
}
```

