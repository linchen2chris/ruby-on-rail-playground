describe 'test case' do
  it 'should works for rspec' do
    expect(1 + 1).to eq(2)
  end
end
describe 'Employee' do
  it 'should call out salary update' do
    employee = Employee.new('chen', 'developer', 5000)
    expect(employee.update_salary(5002)).to eq('done')
  end
end
