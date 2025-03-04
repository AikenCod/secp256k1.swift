# Use an official Swift runtime image
FROM swift:5.8.1

# Copies the root directory of the repository into the image's filesystem at `/LinuxTests`
ADD . /LinuxTests

# Set the working directory to `/LinuxTests`
WORKDIR /LinuxTests

# Execute Linux test suite
RUN swift test && swift build --target secp256k1 --use-integrated-swift-driver
