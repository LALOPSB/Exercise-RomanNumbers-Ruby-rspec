describe RomanTextRepresentation do

  describe '.of_number' do

    context 'given the number 1' do
      it 'returns I' do
        expect(RomanTextRepresentation.of_number(1)).to eql("I")
      end
    end

    context 'given a number between 2 and 9' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(2)).to eql("II")
        expect(RomanTextRepresentation.of_number(3)).to eql("III")
        expect(RomanTextRepresentation.of_number(4)).to eql("IV")
        expect(RomanTextRepresentation.of_number(7)).to eql("VII")
        expect(RomanTextRepresentation.of_number(9)).to eql("IX")
      end
    end

    context 'given a number between 10 and 13' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(10)).to eql("X")
        expect(RomanTextRepresentation.of_number(11)).to eql("XI")
        expect(RomanTextRepresentation.of_number(12)).to eql("XII")
        expect(RomanTextRepresentation.of_number(13)).to eql("XIII")
      end
    end

    context 'given 14' do
      it 'returns XIV' do
        expect(RomanTextRepresentation.of_number(14)).to eql("XIV")
      end
    end

    context 'given a number between 15 and 18' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(15)).to eql("XV")
        expect(RomanTextRepresentation.of_number(16)).to eql("XVI")
        expect(RomanTextRepresentation.of_number(17)).to eql("XVII")
        expect(RomanTextRepresentation.of_number(18)).to eql("XVIII")
      end
    end

    context 'given 19' do
      it 'returns XIX' do
        expect(RomanTextRepresentation.of_number(19)).to eql("XIX")
      end
    end

    context 'given a number between 20 and 29' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(20)).to eql("XX")
        expect(RomanTextRepresentation.of_number(24)).to eql("XXIV")
        expect(RomanTextRepresentation.of_number(27)).to eql("XXVII")
        expect(RomanTextRepresentation.of_number(29)).to eql("XXIX")
      end
    end

    context 'given a number between 30 and 39' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(30)).to eql("XXX")
        expect(RomanTextRepresentation.of_number(34)).to eql("XXXIV")
        expect(RomanTextRepresentation.of_number(37)).to eql("XXXVII")
        expect(RomanTextRepresentation.of_number(39)).to eql("XXXIX")
      end
    end

    context 'given a number between 40 and 49' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(40)).to eql("XL")
        expect(RomanTextRepresentation.of_number(44)).to eql("XLIV")
        expect(RomanTextRepresentation.of_number(47)).to eql("XLVII")
        expect(RomanTextRepresentation.of_number(49)).to eql("XLIX")
      end
    end

    context 'given a number between 50 and 89' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(50)).to eql("L")
        expect(RomanTextRepresentation.of_number(64)).to eql("LXIV")
        expect(RomanTextRepresentation.of_number(77)).to eql("LXXVII")
        expect(RomanTextRepresentation.of_number(89)).to eql("LXXXIX")
      end
    end

    context 'given a number between 90 and 99' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(90)).to eql("XC")
        expect(RomanTextRepresentation.of_number(94)).to eql("XCIV")
        expect(RomanTextRepresentation.of_number(97)).to eql("XCVII")
        expect(RomanTextRepresentation.of_number(99)).to eql("XCIX")
      end
    end

    context 'given a number between 100 and 999' do
      it 'returns its correct roman representation' do
        expect(RomanTextRepresentation.of_number(100)).to eql("C")
        expect(RomanTextRepresentation.of_number(999)).to eql("CMXCIX")
      end
    end
  end
end

