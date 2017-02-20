require 'test_helper'

class StudyTest < ActiveSupport::TestCase
  setup do
    @studies = Study.all
    @study = @studies.first
  end

  test 'default_scope_is_ordered' do
    # First two studies have the same request_date, so they are sorted by
    # admission_date:
    assert @studies.first.admission_date > @studies.second.admission_date

    # 2nd and 3rd studies have different request_date, so that's the sorting
    # option here
    assert @studies.second.request_date > @studies.third.request_date

    # 4th and 5th studies have no dates available, so their ID is used
    assert @studies.last.id < @studies[-2].id
  end

  test 'studies_of_same_project_and_year' do
    others = @study.studies_of_same_project_and_year

    assert_equal 4, others.count

    assert others.map { |study| study.project_id == @study.project_id }.all?

    all_others_same_year = others.map do |study|
      study.admission_date.try(:year) == @study.admission_date.try(:year)
    end.all?

    assert all_others_same_year
  end

  test 'order_in_its_year' do
    assert_equal 4, @study.order_in_its_year
    assert_equal 3, @studies.second.order_in_its_year
  end
end
