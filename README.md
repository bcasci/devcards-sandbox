# DevCards Dogfooding Setup

This repo is the target sandbox for dogfooding [DevCards](https://github.com/bcasci/devcards). The steps below must be completed by a human — AI agents cannot handle OAuth registration, DNS, or webhook configuration.

## 1. GitHub OAuth App

- Go to **GitHub Settings > Developer settings > OAuth Apps > New**
- Set Homepage URL: `https://devcards.test` (or your domain)
- Set Authorization callback URL: `https://devcards.test/auth/github/callback`
- Copy Client ID and Client Secret

## 2. Environment Variables

Create `.env` in the DevCards project root:

```
GITHUB_CLIENT_ID=<from step 1>
GITHUB_CLIENT_SECRET=<from step 1>
RAILS_MASTER_KEY=<from config/master.key>
```

## 3. Local DNS + SSL (puma-dev)

```bash
# Install puma-dev
brew install puma/puma/puma-dev
puma-dev -setup
puma-dev -install

# Link the app
cd ~/.puma-dev
ln -s /path/to/devcards devcards
```

App is now available at `https://devcards.test`

## 4. Database Setup

```bash
bin/rails db:create db:migrate db:seed
```

## 5. GitHub Webhook (for full pipeline)

- Go to **this repo > Settings > Webhooks > Add webhook**
- Payload URL: use ngrok or a tunnel for local dev: `ngrok http https://devcards.test`
- Content type: `application/json`
- Secret: generate one and add to your project's webhook secret in DevCards
- Events: Issues, Pull requests, Check suites, Check runs, Pull request reviews, Issue comments

## 6. First Login

- Visit `https://devcards.test` — you'll see the login page
- Click "Sign in with GitHub" — OAuth flow creates your user
- Create a project, add **bcasci/devcards-sandbox** as a repo, and start creating issues

## Calculator Module

The `Calculator` module provides these class methods:

- `Calculator.add(a, b)` - Returns the sum of two numbers
- `Calculator.subtract(a, b)` - Returns the difference of two numbers
- `Calculator.hello` - Returns `"Hello, world!"`

## What Happens Next

Once the above is done, see [issue #364](https://github.com/bcasci/devcards/issues/364) in the DevCards repo for AI-led post-setup verification and first-run steps.
