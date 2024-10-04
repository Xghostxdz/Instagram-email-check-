
```markdown
# Instagram-email-check-

This script is designed to check the availability of Instagram accounts by sending a request to Instagram's password recovery API using randomly generated email addresses. The script is written in Ruby and uses the `HTTParty` gem to send HTTP requests.

## Features

- Sends a POST request to Instagram's password recovery endpoint with a randomly generated email.
- Saves valid emails (those with an associated Instagram account) to a `good.txt` file.
- Runs indefinitely in a loop, generating and checking emails.

## Prerequisites

- Ruby installed on your system.
- The `HTTParty` gem. Install it by running:

```bash
gem install httparty
```

## Usage

1. Clone this repository or copy the script to your local machine.
2. Make sure you have Ruby and the required gem (`HTTParty`) installed.
3. Run the script by executing:

```bash
ruby script_name.rb
```

The script will generate random email addresses and check if they are associated with an Instagram account. If an account is found, the email will be saved to the `good.txt` file.

## Notes

- This script is for educational purposes only. Do not use it for malicious activities.
- The headers and cookies in the script are specific to this version of Instagram's API. They may change over time, requiring updates to the script.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
```

إذا كنت ترغب في أي تعديل أو إضافة، أعلمني!
