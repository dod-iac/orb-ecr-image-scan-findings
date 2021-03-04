# orb-ecr-image-scan-findings

Scans the uploaded ECR image and outputs the findings.

## Usage

For full usage guidelines, see the [orb registry listing](https://circleci.com/orbs/registry/orb/dod-iac/orb-ecr-image-scan-findings).

### Expectations

* Use this orb with an ECR repository where an image has been uploaded

### Parameters

All the parameters are environment variables. These are described below:

| Name | Description |
| --- | --- |
| AWS_ROLE_ARN | The ARN of the role to assume. Must have IAM action ecr:DescribeImageScanFindings. |
| AWS_ROLE_SESSION_NAME | An identifier for the assumed role session. |
| ECR_REPOSITORY_NAME | The name of the ECR repository where the image has been uploaded and scanned |
| ECR_IMAGE_ID | An object with identifying information for an Amazon ECR image. Either 'imageDigest=string' or 'imageTag=string'. |

## Developer Setup

Install dependencies:

```sh
brew install circleci pre-commit
pre-commit install
```

Setup circleci access with:

```sh
circleci setup
```


## Testing Changes

Changes should be applied to `orb.yml`.

Validate your changes using the `circleci orb` command:

```sh
make validate
```

## Dev Deployment

Publish a dev version to test with:

```sh
make publish-dev
```

Use this dev version to test in a repository of your choosing before continuing.

## Prod Deployment

Create a PR in here to review your changes.

Once approved, publish the production version of the orb:

```sh
make publish-prod
```

The orb version displayed in the CircleCI orb registry is the new version to use.

Merge the pull requests.

## References

* [Manual Orb Authoring Process](https://circleci.com/docs/2.0/orb-author-validate-publish/)

## License

This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.
