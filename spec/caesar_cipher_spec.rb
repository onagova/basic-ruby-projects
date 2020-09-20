require './lib/caesar-cipher'

describe 'caesar_cipher' do
  context 'with positive shift factor' do
    context 'with upper case string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('ABC', 3)).to eql('DEF')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('XYZ', 6)).to eql('DEF')
        end
      end
    end

    context 'with lower case string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('hij', 4)).to eql('lmn')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('uvw', 17)).to eql('lmn')
        end
      end
    end

    context 'with non-letter string' do
      it 'returns original string' do
        expect(caesar_cipher('!@#', 5)).to eql('!@#')
      end
    end

    context 'with mixed character types string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('Hello, world!', 1)).to eql('Ifmmp, xpsme!')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('Hello, world!', 25)).to eql('Gdkkn, vnqkc!')
        end
      end
    end
  end

  context 'with negative shift factor' do
    context 'with upper case string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('DEF', -3)).to eql('ABC')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('DEF', -6)).to eql('XYZ')
        end
      end
    end

    context 'with lower case string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('lmn', -4)).to eql('hij')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('lmn', -17)).to eql('uvw')
        end
      end
    end

    context 'with non-letter string' do
      it 'returns original string' do
        expect(caesar_cipher('!@#', -5)).to eql('!@#')
      end
    end

    context 'with mixed character types string' do
      context 'when shifting within alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('Ifmmp, xpsme!', -1)).to eql('Hello, world!')
        end
      end

      context 'when shifing beyond alphabets range' do
        it 'returns correctly ciphered string' do
          expect(caesar_cipher('Gdkkn, vnqkc!', -25)).to eql('Hello, world!')
        end
      end
    end
  end

  context 'with zero shift factor' do
    context 'with upper case string' do
      it 'returns original string' do
        expect(caesar_cipher('ABC', 0)).to eql('ABC')
      end
    end

    context 'with lower case string' do
      it 'returns original string' do
        expect(caesar_cipher('abc', 0)).to eql('abc')
      end
    end

    context 'with non-letter string' do
      it 'returns original string' do
        expect(caesar_cipher('!@#', 0)).to eql('!@#')
      end
    end

    context 'with mixed character types string' do
      it 'returns original string' do
        expect(caesar_cipher('Hello, world!', 0)).to eql('Hello, world!')
      end
    end
  end
end
