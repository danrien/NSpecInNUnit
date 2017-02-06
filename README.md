# NSpecInNUnit

A repo to demonstrate running NSpec examples in a NUnit test suite.

One purpose is to help demonstrate this issue: https://github.com/mattflo/NSpec/issues/114

## How to use

Install using Package Manager Console in Visual Studio:

    Install-Package NSpecInNUnit

Or if you prefer a UI, find it via the Manage NuGet Packages for Solution menu.

Once installed, it's a matter of using the base class:

    using NSpec;
    using NSpecInNUnit;

    public class my_examples : nspec_as_nunit {

      public void describe_the_examples() {
        it["should work"] = () => 1.should_be(1);
      }

    }

For more information about NSpec, please visit http://nspec.org/.

## Limitations

* Only works with NUnit 2
* All examples are run together. Running a single test (e.g. via ReSharper) only affects
  the test reporting.

## License

The code is licensed under the MIT license. See https://per.mit-license.org/2016
