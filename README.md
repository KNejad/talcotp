# TalcOTP

An otp password generator using [rotp](https://github.com/mdp/rotp)

## Usage

Run this command to print all the current codes:

```
talcotp /path/to/otp_file
```

Where the `otp_file` is of the format:

```
[
  {
    "secret":"JBSWY3DPEHPK3PXP",
    "label":"test_label",
    "period":30,
    "digits":6,
    "algorithm":"SHA1"
  },
  {
    "secret":"wrn3pqx5uqxqvnqr",
    "label":"test_label_2",
    "period":40,
    "digits":7,
    "algorithm":"SHA256"
  }
]
```

You can also run the command passing in the name of the account in order for it to copy the code to the clipboard:

```
talcotp /path/to/otp_file test_label
```

## Installation

```
gem install talcotp
```

## Building the gem from source

You can build from source with the following command:

```
gem build talcotp.gemspec
```
