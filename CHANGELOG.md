# 0.8.0

  * Passing module names and output path as mix task parameters is no longer supported.
  * Inferring default module names from mix project is no longer supported.
  * Swagger file outputs, router module and optional endpoint module must now be specified in application config:

  ```elixir
  config :my_app, :phoenix_swagger,
    swagger_files: %{
      "priv/static/swagger.json" => [router: MyAppWeb.Router, endpoint: MyAppWeb.Endpoint],
      # additional swagger files here
    }
  ```

# 0.7.1

  * Use the :load_from_system_env Endpoint config flag to detect dynamic host and port configuration

# 0.7.0

  * Minor fix that supports the Phoenix 1.3 namespacing, where it is {Project}Web instead of {Project}.Web.
  * Add support for has_many relationships for JSON-API resource schemas
  * Upgrade to swagger-ui 3.1.7
  * Tests for nested and non-nested required parameters for `PhoenixSwagger.Plug.Validate`.
  *  Decode parameter names using `Plug.Conn.Query.decode` and walk `conn.params` to find the nested param as `conn.params` is already nested while `parameter["name"]` is not when received by `PhoenixSwagger.Plug.Validate.validate_query_params/2`.

# 0.6.4

  * Adds support to enable security by endpoint
  * `PhoenixSwagger.Plug.Validate` sets response content type on error to `application/json`
  * `PhoenixSwagger.Plug.Validate` accepts `:validation_failed_status` option, defaults to 400
  * Example application includes usage of validator

# 0.6.3

  * Adds support for custom Endpoint module names by passing `--endpoint`
  * Added patch request support

# 0.6.2

  * fix path assignation of a swagger specification file in UI plug
  * add `disable_validator` option to disable/enable validation of a
swagger schema.

# 0.6.1

  * Provide default host and port when generating swagger host config
  * Suppress host config when dynamic hostname or port are used

# 0.6.0

  * Use phoenix 1.3 conventions for mix tasks and module names
  * Add `PhoenixSwagger.SchemaTest` module for response validation
  * Swagger UI plug redirects / to /index.html automatically avoiding errors when fetching assets.
  * Swagger UI configured to list all operations by default

# 0.5.1

  * Allow property schemas to be declared inline using `Schema.new` macro
  * Allow schemas to include an example
  * Add support for `discriminator` in polymorphic schemas
  * Do not set a host if a url has not been provided
  * Ability to validate boolean values

# 0.5.0

  * Include swagger-ui plug `PhoenixSwagger.Plug.SwaggerUI`
  * Allow for a list of types on `PhoenixSwagger.Schema.type`
  * Fix not running all doctests
  * Fix `ArgumentError` in `Phoenix.Swagger.Generate` when routing to plug with keyword opts [#58](https://github.com/xerions/phoenix_swagger/issues/58)

# 0.4.2

  * Fix FunctionClauseError in `response` when no `produces` mime type defined on an operation.

# 0.4.1

  * Fix compilation errors when using `PhoenixSwagger.JsonApi` macros

# 0.4.0

  * Add `PhoenixSwagger.Schema` module that provides a structure which represents
swagger schema.
  * Add `swagger_schema` macro to build a swagger schema.
  * New JSON-API helpers.
  * Provide documentation with ex_doc.
  * And other changes from @everydayhero fork.
