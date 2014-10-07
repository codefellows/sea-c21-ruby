RSpec.configure do |config|
  # Disable all monkey patching within rspec
  config.disable_monkey_patching!

  # Tell RSpec to abort the run on first failure
  config.fail_fast = true

  # Run only the specs without tagged broken
  # config.filter_run_excluding :broken

  # Run only the specs with tagged focus
  # config.filter_run_including :focus

  # Run all the specs when everything is filtered
  # config.run_all_when_everything_filtered = true

  # Print the 10 slowest examples and example groups
  # config.profile_examples = 10

  # Run specs in random order to surface order dependencies
  # config.order = :random

  # Seed global randomization using the `--seed` CLI option
  # Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    # Include messages for chain matchers inside messages of custom matchers
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    # Prevent mocking or stubbing a method that does not exist on a real object
    mocks.verify_partial_doubles = true
  end
end
