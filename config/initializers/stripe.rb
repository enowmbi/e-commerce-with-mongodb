# frozen_string_literal: true

Stripe.api_key = Rails.application.credentials.dig(:stripe_keys, :secret)
