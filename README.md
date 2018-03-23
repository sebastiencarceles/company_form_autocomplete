# Company form autocomplete

This is a sample project to demonstrate how to automatically fill in a company form thanks to [Companydata.co](https://www.companydata.co).

This is a Rails 5 application. You can [test the live demo](https://company-form-autocomplete.herokuapp.com/).

Feel free to fork, reuse, copy, redistribute... Anything useful for you.

## Dependencies

This project uses Ruby 2.4.0.

Get a recent version of Bundler:

```shell
gem install bundler
gem update bundler
```

and run:

```shell
bundle install --without db
```

More about installing a development environment: [http://guides.rubyonrails.org/development_dependencies_install.html](http://guides.rubyonrails.org/development_dependencies_install.html)

## Getting started

### Clone this project

```shell
git clone https://github.com/sebastiencarceles/company_form_autocomplete.git
cd company_form_autocomplete
```

### Account

Create your account for free on [Companydata.co](https://www.companydata.co). You will be given an API Key.

### API Key

Create the file `config/application.yml` and copy-paste your API Key into this file:

```yml
COMPANYDATA_API_KEY: MyAwesomeKey
```

### Run the server and test

```shell
rails server
```

Open your browser to [localhost:3000](http://localhost:3000) and type in a french registration number or VAT number. For example: `FR58828022053`.
