require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
    let(:user) { create(:user) }
    let(:headers) { { HTTP_ACCEPT: 'application/json' } }

    context 'Sign in with valid credentials' do

        before do
            post '/api/auth/sign_in', params: {email: user.email,
                password: user.password
            }, headers: headers
        end

        it 'returns 200' do
            expect(response).to have_http_status(200)
        end

        it 'valid credentials returns user' do
        expected_response = {'data' => {'id' => user.id,
                                        'first_name' => user.first_name,
                                        'last_name' => user.last_name,
                                        'role' => user.role,
                                        'uid' => user.email,
                                        'email' => user.email,
                                        'provider' => 'email'}    
                                        }

        expect(json_response(response.body)).to eq expected_response
        end
    end

    context 'POST /api/auth/sign_in' do

        before do
            post '/api/auth/sign_in', params: {email: user.email, 
                password: 'wrong_password'
            }, headers: headers
        end

        it 'returns 401' do
            expect(response).to have_http_status(401)
        end

        it 'invalid password returns error message' do
            expect(json_response(response.body)['errors']).to eq ['Invalid login credentials. Please try again.']
        end
    end
    
    context 'POST /api/auth/sign_in' do

        before do
            post '/api/auth/sign_in', params: {email: 'wrong@email.com',
                password: user.password
            }, headers: headers
        end

        it 'returns 401' do
            expect(response).to have_http_status(401)
        end

        it 'invalid email returns error message' do
        expect(json_response(response.body)['errors']).to eq ['Invalid login credentials. Please try again.']
        end
    end
end