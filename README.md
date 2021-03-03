# orb-ecr-image-scan-findings

Scans the uploaded ECR image and outputs the findings.

## Usage

For full usage guidelines, see the [orb registry listing](https://circleci.com/orbs/registry/orb/dod-iac/orb-ecr-image-scan-findings).

### Expectations

* Use this orb with an ECR repository where an image has been uploaded

## Developer Setup

Install dependencies:

```sh
brew install circleci pre-commit
pre-commit install
```

## Testing Changes

Changes should be applied to `orb.yml`.

Validate your changes using the `circleci orb` command:

```sh
circleci orb validate orb.yml
```

## Dev Deployment

Publish a dev version to test with:

```sh
circleci orb publish orb.yml dod-iac/orb-ecr-image-scan-findings@dev:first
```

Use this dev version to test in a repository of your choosing before continuing.

## Prod Deployment

Create a PR in here to review your changes.

Once approved, publish the production version of the orb:

```sh
circleci orb publish promote sandbox/hello-world@dev:first patch
```

The orb version displayed in the CircleCI orb registry is the new version to use.

Merge the pull requests.

## License

This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.
